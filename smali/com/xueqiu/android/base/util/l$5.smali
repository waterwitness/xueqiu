.class final Lcom/xueqiu/android/base/util/l$5;
.super Ljava/lang/Object;
.source "GroupUtil.java"

# interfaces
.implements Lrx/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/l;->a(Lcom/xueqiu/android/common/b;J)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/g",
        "<",
        "Lcom/xueqiu/android/community/model/FriendshipGroup;",
        "Lcom/xueqiu/android/community/model/FriendshipGroup;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 207
    check-cast p1, Lcom/xueqiu/android/community/model/FriendshipGroup;

    check-cast p2, Lcom/xueqiu/android/community/model/FriendshipGroup;

    .line 1210
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/FriendshipGroup;->getOrderId()I

    move-result v0

    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/FriendshipGroup;->getOrderId()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 207
    return-object v0
.end method
