.class final Lcom/xueqiu/android/message/IMGroupListActivity$1;
.super Ljava/lang/Object;
.source "IMGroupListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/IMGroupListActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/message/model/IMGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/IMGroupListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/IMGroupListActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/xueqiu/android/message/IMGroupListActivity$1;->a:Lcom/xueqiu/android/message/IMGroupListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 104
    check-cast p1, Lcom/xueqiu/android/message/model/IMGroup;

    check-cast p2, Lcom/xueqiu/android/message/model/IMGroup;

    .line 1107
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getPinyinHeaders()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/IMGroup;->getPinyinHeaders()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 104
    return v0
.end method
