.class final Lcom/xueqiu/android/common/account/LoginActivity$36$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/LoginActivity$36;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/common/account/LoginActivity$36;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity$36;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$36$1;->b:Lcom/xueqiu/android/common/account/LoginActivity$36;

    iput-object p2, p0, Lcom/xueqiu/android/common/account/LoginActivity$36$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 317
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$36$1;->b:Lcom/xueqiu/android/common/account/LoginActivity$36;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/LoginActivity$36;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->g(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/account/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity$36$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$36$1;->b:Lcom/xueqiu/android/common/account/LoginActivity$36;

    iget-object v2, v2, Lcom/xueqiu/android/common/account/LoginActivity$36;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/account/LoginActivity;->f(Lcom/xueqiu/android/common/account/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    .line 1050
    iget-object v3, v0, Lcom/xueqiu/android/common/account/b;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    const v4, 0x7f070361

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/common/account/LoginActivity;->c_(Ljava/lang/String;)Landroid/app/Dialog;

    .line 1051
    iget-object v3, v0, Lcom/xueqiu/android/common/account/b;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/common/account/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 318
    return-void
.end method
