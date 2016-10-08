.class final Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$4;
.super Ljava/lang/Object;
.source "VerifyBindedPhoneNumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$4;->a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    const-string v1, "mailto:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$4;->a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-static {v4}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->d(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "\u65e0\u6cd5\u9a8c\u8bc1\u624b\u673a\u53f7"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$4;->a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
