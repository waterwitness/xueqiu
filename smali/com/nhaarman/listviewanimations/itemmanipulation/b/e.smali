.class final Lcom/nhaarman/listviewanimations/itemmanipulation/b/e;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;II)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/e;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput p2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/e;->b:I

    .line 262
    iput p3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/e;->c:I

    .line 263
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/e;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;

    .line 1241
    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 267
    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/e;->b:I

    neg-int v1, v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/nhaarman/listviewanimations/a/d;->b(II)V

    .line 268
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/e;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;

    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/e;->c:I

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->b(I)V

    .line 269
    return-void
.end method
