.class final Lcom/xueqiu/android/common/account/LoginByEmailActivity$3;
.super Ljava/lang/Object;
.source "LoginByEmailActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/LoginByEmailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/LoginByEmailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginByEmailActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity$3;->a:Lcom/xueqiu/android/common/account/LoginByEmailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 88
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity$3;->a:Lcom/xueqiu/android/common/account/LoginByEmailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->a(Lcom/xueqiu/android/common/account/LoginByEmailActivity;)V

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
