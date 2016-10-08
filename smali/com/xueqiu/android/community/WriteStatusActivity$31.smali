.class final Lcom/xueqiu/android/community/WriteStatusActivity$31;
.super Lrx/i;
.source "WriteStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$31;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 1696
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1692
    .line 2720
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$31;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->finish()V

    .line 2721
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$31;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->Q(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 2722
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$31;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->R(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 1692
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 1700
    instance-of v0, p1, Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$31;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    .line 1702
    check-cast p1, Lcom/xueqiu/android/base/a/a;

    .line 2072
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorDescription:Ljava/lang/String;

    .line 1704
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1705
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1707
    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/WriteStatusActivity$31$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/WriteStatusActivity$31$1;-><init>(Lcom/xueqiu/android/community/WriteStatusActivity$31;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1714
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1716
    :cond_0
    return-void
.end method
