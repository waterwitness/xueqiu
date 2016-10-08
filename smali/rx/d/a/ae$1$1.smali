.class final Lrx/d/a/ae$1$1;
.super Ljava/lang/Object;
.source "OperatorTimeout.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a/ae$1;
.end annotation


# instance fields
.field final synthetic a:Lrx/d/a/ai;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Lrx/d/a/ae$1;


# direct methods
.method constructor <init>(Lrx/d/a/ae$1;Lrx/d/a/ai;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lrx/d/a/ae$1$1;->c:Lrx/d/a/ae$1;

    iput-object p2, p0, Lrx/d/a/ae$1$1;->a:Lrx/d/a/ai;

    iput-object p3, p0, Lrx/d/a/ae$1$1;->b:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lrx/d/a/ae$1$1;->a:Lrx/d/a/ai;

    iget-object v1, p0, Lrx/d/a/ae$1$1;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/d/a/ai;->b(J)V

    .line 43
    return-void
.end method
