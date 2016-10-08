.class final Lcom/xueqiu/android/base/util/l$7;
.super Ljava/lang/Object;
.source "GroupUtil.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/l;->a(Lcom/xueqiu/android/common/b;J)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/community/model/FriendshipGroup;",
        ">;",
        "Lrx/a",
        "<",
        "Lcom/xueqiu/android/community/model/FriendshipGroup;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    check-cast p1, Ljava/util/List;

    .line 1200
    invoke-static {p1}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    .line 197
    return-object v0
.end method
