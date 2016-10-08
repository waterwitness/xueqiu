.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$18;
.super Ljava/lang/Object;
.source "VerifyPhoneNumActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$18;->c:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    iput-wide p2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$18;->a:J

    iput-object p4, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$18;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 4

    .prologue
    .line 334
    packed-switch p2, :pswitch_data_0

    .line 348
    :goto_0
    :pswitch_0
    return-void

    .line 336
    :pswitch_1
    new-instance v0, Lcom/xueqiu/android/community/model/User;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/User;-><init>()V

    .line 337
    iget-wide v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$18;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/User;->setUserId(J)V

    .line 338
    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$18;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/User;->setScreenName(Ljava/lang/String;)V

    .line 339
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$18;->c:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const-class v3, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    const-string v2, "extra_user"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 341
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$18;->c:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 344
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$18;->c:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->h()Landroid/app/Dialog;

    .line 345
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$18;->c:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
