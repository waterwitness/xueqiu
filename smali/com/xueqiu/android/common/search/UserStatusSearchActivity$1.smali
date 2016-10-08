.class final Lcom/xueqiu/android/common/search/UserStatusSearchActivity$1;
.super Ljava/lang/Object;
.source "UserStatusSearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/search/UserStatusSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/UserStatusSearchActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity$1;->a:Lcom/xueqiu/android/common/search/UserStatusSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity$1;->a:Lcom/xueqiu/android/common/search/UserStatusSearchActivity;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->a(Lcom/xueqiu/android/common/search/UserStatusSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object v2, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity$1;->a:Lcom/xueqiu/android/common/search/UserStatusSearchActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->a(Lcom/xueqiu/android/common/search/UserStatusSearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity$1;->a:Lcom/xueqiu/android/common/search/UserStatusSearchActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->b(Lcom/xueqiu/android/common/search/UserStatusSearchActivity;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/i;->c()V

    .line 70
    iget-object v2, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity$1;->a:Lcom/xueqiu/android/common/search/UserStatusSearchActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->b(Lcom/xueqiu/android/common/search/UserStatusSearchActivity;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/community/widget/i;->a(Z)V

    .line 77
    :goto_0
    return v0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity$1;->a:Lcom/xueqiu/android/common/search/UserStatusSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->c(Lcom/xueqiu/android/common/search/UserStatusSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 77
    goto :goto_0
.end method
