.class final Lcom/xueqiu/android/community/d$1;
.super Ljava/lang/Object;
.source "FindPeopleActivity.java"

# interfaces
.implements Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/d;->a(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/xueqiu/android/community/d$1;->a:Lcom/xueqiu/android/community/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/sina/weibo/sdk/api/share/BaseResponse;)V
    .locals 1

    .prologue
    .line 165
    iget v0, p1, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errCode:I

    packed-switch v0, :pswitch_data_0

    .line 176
    :goto_0
    return-void

    .line 167
    :pswitch_0
    const-string v0, "\u9080\u8bf7\u6210\u529f"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :pswitch_1
    const-string v0, "\u53d6\u6d88\u9080\u8bf7"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_2
    const-string v0, "\u9080\u8bf7\u5931\u8d25"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
