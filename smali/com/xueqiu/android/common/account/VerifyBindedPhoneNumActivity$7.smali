.class final Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$7;
.super Ljava/lang/Object;
.source "VerifyBindedPhoneNumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$7;->b:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$7;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 195
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$7;->b:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->f(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)I

    .line 196
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$7;->b:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->g(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$7;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$7;->b:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    const v2, 0x7f070357

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$7;->b:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-static {v5}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->g(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$7;->b:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->h(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$7;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$7;->b:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    const v2, 0x7f070183

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$7;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
