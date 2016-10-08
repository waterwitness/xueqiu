.class final Lcom/xueqiu/android/message/a/u$1;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/u;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/message/a/y;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a/u;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/u;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/xueqiu/android/message/a/u$1;->a:Lcom/xueqiu/android/message/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 168
    check-cast p1, Lcom/xueqiu/android/message/a/y;

    check-cast p2, Lcom/xueqiu/android/message/a/y;

    .line 1222
    iget v0, p1, Lcom/xueqiu/android/message/a/y;->c:I

    .line 2222
    iget v1, p2, Lcom/xueqiu/android/message/a/y;->c:I

    .line 1171
    sub-int/2addr v0, v1

    .line 168
    return v0
.end method
