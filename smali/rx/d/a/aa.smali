.class public final Lrx/d/a/aa;
.super Ljava/lang/Object;
.source "OperatorSkip.java"

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
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x14

    iput v0, p0, Lrx/d/a/aa;->a:I

    .line 37
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lrx/i;

    .line 1041
    new-instance v0, Lrx/d/a/aa$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/d/a/aa$1;-><init>(Lrx/d/a/aa;Lrx/i;Lrx/i;)V

    .line 31
    return-object v0
.end method
