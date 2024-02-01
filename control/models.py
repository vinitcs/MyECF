from django.db import models

# Create your models here.
class myecf(models.Model):
    college_name = models.CharField(max_length=100)
    region = models.CharField(max_length=20)
    autonomus = models.CharField(max_length=15)
    university = models.CharField(max_length=10)
    course = models.CharField(max_length=20)
    co_ex_ci_me_ch = models.CharField(max_length=20)
    obc_sc_st_nt_open = models.CharField(max_length=10)
    girls_college = models.CharField(max_length=10)
    min_cet = models.FloatField()
    min_jee = models.FloatField()
    previous_year_cutoff = models.FloatField()
    clg_short_name = models.CharField(null = True, max_length=50)
    clg_link = models.CharField(null = True, max_length=100)
    # clg_image = models.ImageField()


class userFeedback(models.Model):
    name = models.CharField(max_length=50)
    phone =models.IntegerField()
    email =models.EmailField(max_length=50)
    date = models.DateField()
    desc =models.TextField(max_length=100)


