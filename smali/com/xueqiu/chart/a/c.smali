.class public final Lcom/xueqiu/chart/a/c;
.super Ljava/lang/Object;
.source "ValueEntry.java"


# instance fields
.field public a:F

.field public b:Lcom/xueqiu/chart/b/j;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/xueqiu/chart/a/c;->a:F

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xueqiu/chart/a/c;->c:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/xueqiu/chart/a/c;->a:F

    .line 24
    return-void
.end method
