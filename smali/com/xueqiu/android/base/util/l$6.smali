.class final Lcom/xueqiu/android/base/util/l$6;
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
        "Lcom/xueqiu/android/community/model/FriendshipGroup;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 202
    check-cast p1, Lcom/xueqiu/android/community/model/FriendshipGroup;

    .line 1205
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/FriendshipGroup;->getId()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 202
    return-object v0

    .line 1205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
