.class final Lcom/xueqiu/android/common/WelcomeActivity$3;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/WelcomeActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/xueqiu/android/common/WelcomeActivity$3;->a:Lcom/xueqiu/android/common/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 272
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity$3;->a:Lcom/xueqiu/android/common/WelcomeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/WelcomeActivity;->d(Lcom/xueqiu/android/common/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity$3;->a:Lcom/xueqiu/android/common/WelcomeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/WelcomeActivity;->d(Lcom/xueqiu/android/common/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 274
    return-void
.end method
