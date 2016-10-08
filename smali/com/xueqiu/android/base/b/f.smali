.class final Lcom/xueqiu/android/base/b/f;
.super Ljava/lang/Object;
.source "InvestmentCalendarClient.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/e;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/base/b/f;->a:Lcom/xueqiu/android/base/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 78
    check-cast p1, Lcom/xueqiu/android/stock/model/InvCalEventsPair;

    check-cast p2, Lcom/xueqiu/android/stock/model/InvCalEventsPair;

    .line 1083
    iget-object v0, p1, Lcom/xueqiu/android/stock/model/InvCalEventsPair;->mDate:Ljava/lang/String;

    iget-object v1, p2, Lcom/xueqiu/android/stock/model/InvCalEventsPair;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 78
    return v0
.end method
