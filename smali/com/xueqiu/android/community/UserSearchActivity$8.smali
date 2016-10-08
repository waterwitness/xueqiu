.class final Lcom/xueqiu/android/community/UserSearchActivity$8;
.super Ljava/lang/Object;
.source "UserSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserSearchActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserSearchActivity;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/xueqiu/android/community/UserSearchActivity$8;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$8;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$8;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$8;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1, v0, v2, v2}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;Ljava/lang/String;ZZ)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$8;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 241
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$8;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1, v0, v2, v3}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$8;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$8;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->e(Lcom/xueqiu/android/community/UserSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$8;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->f(Lcom/xueqiu/android/community/UserSearchActivity;)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 224
    return-void
.end method
