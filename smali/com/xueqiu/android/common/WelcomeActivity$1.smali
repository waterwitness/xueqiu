.class final Lcom/xueqiu/android/common/WelcomeActivity$1;
.super Landroid/os/Handler;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/WelcomeActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/WelcomeActivity;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/xueqiu/android/common/WelcomeActivity$1;->a:Lcom/xueqiu/android/common/WelcomeActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity$1;->a:Lcom/xueqiu/android/common/WelcomeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/WelcomeActivity;->a(Lcom/xueqiu/android/common/WelcomeActivity;)V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity$1;->a:Lcom/xueqiu/android/common/WelcomeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/WelcomeActivity;->b(Lcom/xueqiu/android/common/WelcomeActivity;)V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity$1;->a:Lcom/xueqiu/android/common/WelcomeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/WelcomeActivity;->c(Lcom/xueqiu/android/common/WelcomeActivity;)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
