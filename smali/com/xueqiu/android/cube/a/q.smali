.class public final Lcom/xueqiu/android/cube/a/q;
.super Ljava/lang/Object;
.source "SearchCubeDefaultAdapter.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/a/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/a/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/q;->a:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/xueqiu/android/cube/a/q;->b:Ljava/util/List;

    .line 163
    return-void
.end method
