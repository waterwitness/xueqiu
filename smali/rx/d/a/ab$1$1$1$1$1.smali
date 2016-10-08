.class final Lrx/d/a/ab$1$1$1$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/ab$1$1$1$1;->a(J)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lrx/d/a/ab$1$1$1$1;


# direct methods
.method constructor <init>(Lrx/d/a/ab$1$1$1$1;J)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lrx/d/a/ab$1$1$1$1$1;->b:Lrx/d/a/ab$1$1$1$1;

    iput-wide p2, p0, Lrx/d/a/ab$1$1$1$1$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lrx/d/a/ab$1$1$1$1$1;->b:Lrx/d/a/ab$1$1$1$1;

    iget-object v0, v0, Lrx/d/a/ab$1$1$1$1;->a:Lrx/f;

    iget-wide v2, p0, Lrx/d/a/ab$1$1$1$1$1;->a:J

    invoke-interface {v0, v2, v3}, Lrx/f;->a(J)V

    .line 95
    return-void
.end method
