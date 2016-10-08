.class public final Lcom/pingan/b/b/a;
.super Ljava/lang/Object;
.source "Context.java"


# instance fields
.field public a:I

.field public b:Z

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/pingan/b/b/a;->c:I

    .line 19
    iput v0, p0, Lcom/pingan/b/b/a;->a:I

    .line 20
    iput-boolean v0, p0, Lcom/pingan/b/b/a;->b:Z

    .line 21
    return-void
.end method
