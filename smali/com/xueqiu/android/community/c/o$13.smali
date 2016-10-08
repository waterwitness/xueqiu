.class final Lcom/xueqiu/android/community/c/o$13;
.super Lcom/xueqiu/android/base/b/p;
.source "PublicTimelineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/o;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/o;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/xueqiu/android/community/c/o$13;->a:Lcom/xueqiu/android/community/c/o;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 753
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 754
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 750
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    .line 1758
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    .line 1759
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$13;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->b(Lcom/xueqiu/android/community/c/o;)V

    .line 750
    return-void
.end method
