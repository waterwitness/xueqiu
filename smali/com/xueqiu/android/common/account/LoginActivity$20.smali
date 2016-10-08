.class final Lcom/xueqiu/android/common/account/LoginActivity$20;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/LoginActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$20;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 727
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$20;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const v0, 0x7f070273

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 2053
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 738
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x9c4

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 740
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$20;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    const v0, 0x7f070259

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$20;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 732
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$20;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$20;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->o(Lcom/xueqiu/android/common/account/LoginActivity;)V

    goto :goto_0

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$20;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->p(Lcom/xueqiu/android/common/account/LoginActivity;)V

    goto :goto_0
.end method
