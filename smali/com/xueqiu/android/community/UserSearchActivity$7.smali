.class final Lcom/xueqiu/android/community/UserSearchActivity$7;
.super Ljava/lang/Object;
.source "UserSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 209
    iput-object p1, p0, Lcom/xueqiu/android/community/UserSearchActivity$7;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 212
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$7;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->d(Lcom/xueqiu/android/community/UserSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$7;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$7;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;Ljava/lang/String;ZZ)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$7;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 216
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$7;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1, v0, v3, v3}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
