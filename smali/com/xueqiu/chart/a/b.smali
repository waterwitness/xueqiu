.class public final Lcom/xueqiu/chart/a/b;
.super Ljava/lang/Object;
.source "DataSeries.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Z

.field public e:Lcom/xueqiu/chart/a/c;

.field public f:Lcom/xueqiu/chart/a/c;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/chart/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/chart/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/chart/a/b;->d:Z

    .line 26
    iput-object p1, p0, Lcom/xueqiu/chart/a/b;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 28
    return-void
.end method
