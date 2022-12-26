from django.conf import settings
from django.db import models

NULLABLE = {"null": True, "blank": True}

class Ad(models.Model):
    title = models.CharField(max_length=50, verbose_name='заголовок')
    price = models.IntegerField(verbose_name='цена')
    description = models.TextField(verbose_name='описание', **NULLABLE)
    author = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, verbose_name='автор')
    image = models.ImageField(upload_to='ads', verbose_name='превью', **NULLABLE)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name = 'объявление'
        verbose_name_plural = 'объявления'
        ordering = ("-created_at",)

    def __str__(self):
        return f'{self.title}'


class Comment(models.Model):
    text = models.TextField(verbose_name='отзыв')
    author = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, verbose_name='автор')
    ad = models.ForeignKey(Ad, on_delete=models.CASCADE, verbose_name='объявление')
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name = 'отзыв'
        verbose_name_plural = 'отзывы'
        ordering = ("-created_at",)

    def __str__(self):
        return f'{self.text[:15]}...'

