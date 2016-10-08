.class final Lcom/xueqiu/android/common/account/LoginActivity$29;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/LoginActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xueqiu/android/common/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$29;->b:Lcom/xueqiu/android/common/account/LoginActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/account/LoginActivity$29;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1134
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$29;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity$29;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1135
    const/16 v1, 0x64

    if-le v0, v1, :cond_3

    .line 1136
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$29;->b:Lcom/xueqiu/android/common/account/LoginActivity;

    iget-boolean v0, v0, Lcom/xueqiu/android/common/account/LoginActivity;->s:Z

    if-eqz v0, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$29;->b:Lcom/xueqiu/android/common/account/LoginActivity;

    iget-boolean v0, v0, Lcom/xueqiu/android/common/account/LoginActivity;->t:Z

    if-nez v0, :cond_2

    .line 1140
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$29;->b:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Z)V

    .line 1142
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$29;->b:Lcom/xueqiu/android/common/account/LoginActivity;

    iput-boolean v3, v0, Lcom/xueqiu/android/common/account/LoginActivity;->t:Z

    goto :goto_0

    .line 1143
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$29;->b:Lcom/xueqiu/android/common/account/LoginActivity;

    iget-boolean v0, v0, Lcom/xueqiu/android/common/account/LoginActivity;->t:Z

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$29;->b:Lcom/xueqiu/android/common/account/LoginActivity;

    iget-boolean v0, v0, Lcom/xueqiu/android/common/account/LoginActivity;->s:Z

    if-nez v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$29;->b:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Z)V

    .line 1148
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$29;->b:Lcom/xueqiu/android/common/account/LoginActivity;

    iput-boolean v2, v0, Lcom/xueqiu/android/common/account/LoginActivity;->t:Z

    goto :goto_0
.end method
