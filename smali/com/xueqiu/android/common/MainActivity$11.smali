.class final Lcom/xueqiu/android/common/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/MainActivity;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/xueqiu/android/common/MainActivity$11;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 269
    check-cast p1, Landroid/content/Intent;

    .line 1272
    const-string v0, "extra_bool"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1273
    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$11;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/MainActivity;->d(Lcom/xueqiu/android/common/MainActivity;)Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->setVisibility(I)V

    .line 269
    return-void

    .line 1273
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
