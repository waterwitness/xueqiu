.class final Lcom/xueqiu/android/community/c/h$3;
.super Ljava/lang/Object;
.source "HotTopicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/h;->q()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/h;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/xueqiu/android/community/c/h$3;->a:Lcom/xueqiu/android/community/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 392
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/h$3;->a:Lcom/xueqiu/android/community/c/h;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/h;->c(Lcom/xueqiu/android/community/c/h;)Lcom/xueqiu/android/community/a/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/am;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 393
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xueqiu/android/community/c/h$3;->a:Lcom/xueqiu/android/community/c/h;

    invoke-static {v2}, Lcom/xueqiu/android/community/c/h;->a(Lcom/xueqiu/android/community/c/h;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 394
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/c/h$3;->a:Lcom/xueqiu/android/community/c/h;

    invoke-static {v2}, Lcom/xueqiu/android/community/c/h;->d(Lcom/xueqiu/android/community/c/h;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/base/storage/DBManager;->insertTimeline(Ljava/util/List;I)V

    .line 395
    return-void
.end method
