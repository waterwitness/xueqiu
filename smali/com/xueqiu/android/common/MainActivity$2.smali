.class final Lcom/xueqiu/android/common/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/MainActivity;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/xueqiu/android/common/MainActivity$2;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 308
    check-cast p1, Ljava/lang/Integer;

    .line 1311
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$2;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1619
    iget-object v2, v0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Remind;->getPmComments()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1620
    iget-object v2, v0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Remind;->getPmComments()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/community/model/RemindItem;->setCount(I)V

    .line 1621
    iget-object v1, v0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/MainActivity;->a(Lcom/xueqiu/android/community/model/Remind;)V

    .line 308
    :cond_0
    return-void
.end method
