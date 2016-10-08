.class final Lcom/xueqiu/android/community/c/a$6;
.super Ljava/lang/Object;
.source "CompanyProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/a;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/xueqiu/android/community/c/a$6;->a:Lcom/xueqiu/android/community/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/a$6;->a:Lcom/xueqiu/android/community/c/a;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/c/a;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/stock/InvestmentCalendarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    const-string v1, "sotkc_symbol_extra"

    iget-object v2, p0, Lcom/xueqiu/android/community/c/a$6;->a:Lcom/xueqiu/android/community/c/a;

    invoke-static {v2}, Lcom/xueqiu/android/community/c/a;->e(Lcom/xueqiu/android/community/c/a;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/xueqiu/android/community/c/a$6;->a:Lcom/xueqiu/android/community/c/a;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/c/a;->a(Landroid/content/Intent;)V

    .line 239
    iget-object v0, p0, Lcom/xueqiu/android/community/c/a$6;->a:Lcom/xueqiu/android/community/c/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/a;->f(Lcom/xueqiu/android/community/c/a;)Landroid/app/Application;

    move-result-object v0

    const-string v1, "stockDetail_info_calendar"

    .line 1088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    return-void
.end method
