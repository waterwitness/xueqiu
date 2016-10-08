.class final Lcom/xueqiu/android/common/account/LoginActivity$25;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/LoginActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$25;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 993
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 994
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1008
    :goto_0
    return-void

    .line 996
    :pswitch_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 997
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity$25;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/account/LoginActivity;->c(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 999
    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$25;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/account/LoginActivity;->c(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget-object v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$25;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v3}, Lcom/xueqiu/android/common/account/LoginActivity;->c(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    rem-int/2addr v2, v3

    iget-object v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$25;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v3}, Lcom/xueqiu/android/common/account/LoginActivity;->c(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    .line 1001
    iget-object v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$25;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v3}, Lcom/xueqiu/android/common/account/LoginActivity;->c(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$25;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v3}, Lcom/xueqiu/android/common/account/LoginActivity;->c(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    rem-int/2addr v0, v3

    iget-object v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$25;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v3}, Lcom/xueqiu/android/common/account/LoginActivity;->c(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 1003
    iget-object v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$25;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v3, v1, v2, v0}, Lcom/xueqiu/android/common/account/LoginActivity;->a(Lcom/xueqiu/android/common/account/LoginActivity;III)V

    goto :goto_0

    .line 994
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
