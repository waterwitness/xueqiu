.class final Lcom/xueqiu/android/community/WriteStatusActivity$32;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$32;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$32;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 1737
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1733
    check-cast p1, Ljava/lang/String;

    .line 2747
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$32;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$32;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->S(Lcom/xueqiu/android/community/WriteStatusActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$32;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2748
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$32;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1733
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1741
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1742
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$32;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const-string v1, "erro"

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)V

    .line 1743
    return-void
.end method
