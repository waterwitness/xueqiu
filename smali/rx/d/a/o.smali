.class public final Lrx/d/a/o;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lrx/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c",
        "<TT;",
        "Lrx/a",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/d/a/o;->a:Z

    .line 79
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    check-cast p1, Lrx/i;

    .line 1089
    new-instance v0, Lrx/d/a/r;

    iget-boolean v1, p0, Lrx/d/a/o;->a:Z

    invoke-direct {v0, p1, v1}, Lrx/d/a/r;-><init>(Lrx/i;Z)V

    .line 45
    return-object v0
.end method
