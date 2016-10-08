.class public final Lrx/d/a/n;
.super Ljava/lang/Object;
.source "OperatorMap.java"

# interfaces
.implements Lrx/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/f",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/f",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/d/a/n;->a:Lrx/c/f;

    .line 36
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lrx/i;

    .line 1040
    new-instance v0, Lrx/d/a/n$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/d/a/n$1;-><init>(Lrx/d/a/n;Lrx/i;Lrx/i;)V

    .line 30
    return-object v0
.end method
