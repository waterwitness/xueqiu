.class final Lcom/xueqiu/android/common/search/USearchActivity$7;
.super Ljava/lang/Object;
.source "USearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/search/USearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/search/USearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/USearchActivity;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/xueqiu/android/common/search/USearchActivity$7;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 246
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$7;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->f(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/search/b/a;

    .line 1101
    iget-object v0, v0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    invoke-interface {v0}, Lcom/xueqiu/android/common/search/a/c;->l()V

    .line 249
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$7;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/common/search/USearchActivity$7;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v3}, Lcom/xueqiu/android/common/search/USearchActivity;->g(Lcom/xueqiu/android/common/search/USearchActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/common/search/USearchActivity;->a(ILandroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$7;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/xueqiu/android/common/search/USearchActivity$7;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v3}, Lcom/xueqiu/android/common/search/USearchActivity;->h(Lcom/xueqiu/android/common/search/USearchActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/common/search/USearchActivity;->a(ILandroid/view/View;)V

    .line 251
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$7;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->i(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/search/b/a;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/search/b/a;->a(Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$7;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->j(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/search/b/a;

    .line 1106
    iget-object v0, v0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    invoke-interface {v0}, Lcom/xueqiu/android/common/search/a/c;->m()V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method
