.class final Lcom/xueqiu/android/common/account/LoginActivity$30;
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
    .line 1153
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$30;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$30;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    iget-boolean v0, v0, Lcom/xueqiu/android/common/account/LoginActivity;->t:Z

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$30;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/account/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1158
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1160
    :cond_0
    return-void
.end method
