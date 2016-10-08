.class final Lcom/xueqiu/android/common/account/LoginActivity$14;
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
    .line 533
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$14;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 536
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$14;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 536
    if-eqz v0, :cond_0

    .line 537
    const v0, 0x7f070273

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 5053
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 551
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x9c4

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 553
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$14;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 538
    if-eqz v0, :cond_1

    .line 539
    const v0, 0x7f070259

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$14;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 541
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$14;->a:Lcom/xueqiu/android/common/account/LoginActivity;

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

    .line 542
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$14;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->o(Lcom/xueqiu/android/common/account/LoginActivity;)V

    goto :goto_0

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$14;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 4197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 544
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$14;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    .line 545
    const v0, 0x7f070275

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 547
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$14;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->p(Lcom/xueqiu/android/common/account/LoginActivity;)V

    goto/16 :goto_0
.end method
