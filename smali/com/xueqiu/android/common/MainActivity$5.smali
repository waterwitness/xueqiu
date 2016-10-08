.class final Lcom/xueqiu/android/common/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/MainActivity;->b(Ljava/lang/String;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/MainActivity;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/xueqiu/android/common/MainActivity$5;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 371
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$5;->a:Lcom/xueqiu/android/common/MainActivity;

    const-class v2, Lcom/xueqiu/android/trade/TakingPositionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$5;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 374
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$5;->a:Lcom/xueqiu/android/common/MainActivity;

    const-string v1, "portfolio_performance"

    .line 1088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x1

    return v0
.end method
