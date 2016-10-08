.class final Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1$1;
.super Ljava/lang/Object;
.source "GetbackPasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 77
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;->finish()V

    .line 79
    return-void
.end method
