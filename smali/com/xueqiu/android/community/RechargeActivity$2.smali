.class final Lcom/xueqiu/android/community/RechargeActivity$2;
.super Landroid/os/Handler;
.source "RechargeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/RechargeActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/RechargeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/RechargeActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/xueqiu/android/community/RechargeActivity$2;->a:Lcom/xueqiu/android/community/RechargeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 162
    :pswitch_0
    new-instance v1, Lcom/xueqiu/android/community/model/PayResult;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/xueqiu/android/community/model/PayResult;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "9000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const-string v0, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    const-string v1, "8000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u68c0\u67e5\u7ed3\u679c\u4e3a\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
