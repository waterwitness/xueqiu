.class final Lcom/xueqiu/android/community/j$1;
.super Ljava/lang/Object;
.source "RechargeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/j;->payByAlipay(Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/community/j;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/j;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/xueqiu/android/community/j$1;->b:Lcom/xueqiu/android/community/j;

    iput-object p2, p0, Lcom/xueqiu/android/community/j$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Lcom/alipay/sdk/app/c;

    iget-object v1, p0, Lcom/xueqiu/android/community/j$1;->b:Lcom/xueqiu/android/community/j;

    iget-object v1, v1, Lcom/xueqiu/android/community/j;->a:Lcom/xueqiu/android/community/RechargeActivity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/c;-><init>(Landroid/app/Activity;)V

    .line 143
    iget-object v1, p0, Lcom/xueqiu/android/community/j$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/app/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 146
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 147
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/xueqiu/android/community/j$1;->b:Lcom/xueqiu/android/community/j;

    iget-object v0, v0, Lcom/xueqiu/android/community/j;->a:Lcom/xueqiu/android/community/RechargeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/RechargeActivity;->a(Lcom/xueqiu/android/community/RechargeActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    return-void
.end method
