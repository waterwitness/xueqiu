.class final Lcom/xueqiu/android/community/c/n$1;
.super Ljava/lang/Object;
.source "PortfolioMoreDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/n;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/n;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/xueqiu/android/community/c/n$1;->a:Lcom/xueqiu/android/community/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/n$1;->a:Lcom/xueqiu/android/community/c/n;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xueqiu/android/community/c/n$1;->a:Lcom/xueqiu/android/community/c/n;

    const v2, 0x7f070409

    .line 73
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/c/n;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/n$1;->a:Lcom/xueqiu/android/community/c/n;

    const v2, 0x7f0700b1

    .line 74
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/c/n;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/c/n$1$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/c/n$1$1;-><init>(Lcom/xueqiu/android/community/c/n$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/n$1;->a:Lcom/xueqiu/android/community/c/n;

    const v2, 0x7f0703cb

    .line 83
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/c/n;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 85
    return-void
.end method
