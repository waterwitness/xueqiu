.class final Lcom/xueqiu/android/stock/h$5;
.super Lcom/xueqiu/android/base/b/p;
.source "InvestmentCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/h;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/xueqiu/android/stock/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/h;Lcom/xueqiu/android/base/b/q;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/xueqiu/android/stock/h$5;->b:Lcom/xueqiu/android/stock/h;

    iput-object p3, p0, Lcom/xueqiu/android/stock/h$5;->a:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 486
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 487
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 464
    check-cast p1, Ljava/util/ArrayList;

    .line 1468
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$5;->b:Lcom/xueqiu/android/stock/h;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/h;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$5;->b:Lcom/xueqiu/android/stock/h;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/h;->b(Lcom/xueqiu/android/stock/h;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1473
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$5;->b:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->j(Lcom/xueqiu/android/stock/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/h$5;->b:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->k(Lcom/xueqiu/android/stock/h;)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1474
    new-instance v0, Lcom/xueqiu/android/stock/g;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/g;-><init>()V

    .line 1475
    iget-object v1, p0, Lcom/xueqiu/android/stock/h$5;->b:Lcom/xueqiu/android/stock/h;

    invoke-static {v1}, Lcom/xueqiu/android/stock/h;->k(Lcom/xueqiu/android/stock/h;)I

    move-result v1

    iput v1, v0, Lcom/xueqiu/android/stock/g;->c:I

    .line 1476
    iget-object v1, p0, Lcom/xueqiu/android/stock/h$5;->b:Lcom/xueqiu/android/stock/h;

    invoke-static {v1}, Lcom/xueqiu/android/stock/h;->c(Lcom/xueqiu/android/stock/h;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/g;->b:Ljava/util/ArrayList;

    .line 1477
    iget-object v1, p0, Lcom/xueqiu/android/stock/h$5;->a:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/xueqiu/android/stock/g;->a:Ljava/util/ArrayList;

    .line 1479
    iget-object v1, p0, Lcom/xueqiu/android/stock/h$5;->b:Lcom/xueqiu/android/stock/h;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/h;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1480
    const-string v2, "investment_calendar_data_cache_obj"

    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->storeObject(Landroid/content/SharedPreferences;Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    :cond_0
    return-void
.end method
