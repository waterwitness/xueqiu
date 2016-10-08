.class public final Lrx/d/a/t;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

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
.field private final a:Lrx/g;


# direct methods
.method public constructor <init>(Lrx/g;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lrx/d/a/t;->a:Lrx/g;

    .line 49
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 40
    check-cast p1, Lrx/i;

    .line 1053
    iget-object v0, p0, Lrx/d/a/t;->a:Lrx/g;

    instance-of v0, v0, Lrx/h/m;

    if-eqz v0, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return-object p1

    .line 1056
    :cond_1
    iget-object v0, p0, Lrx/d/a/t;->a:Lrx/g;

    instance-of v0, v0, Lrx/h/r;

    if-nez v0, :cond_0

    .line 1060
    new-instance v0, Lrx/d/a/u;

    iget-object v1, p0, Lrx/d/a/t;->a:Lrx/g;

    invoke-direct {v0, v1, p1}, Lrx/d/a/u;-><init>(Lrx/g;Lrx/i;)V

    move-object p1, v0

    .line 40
    goto :goto_0
.end method
