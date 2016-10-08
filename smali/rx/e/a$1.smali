.class public final Lrx/e/a$1;
.super Ljava/lang/Object;
.source "ConnectableObservable.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/e/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lrx/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Lrx/j;

.field final synthetic b:Lrx/e/a;


# direct methods
.method public constructor <init>(Lrx/e/a;[Lrx/j;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lrx/e/a$1;->b:Lrx/e/a;

    iput-object p2, p0, Lrx/e/a$1;->a:[Lrx/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 53
    check-cast p1, Lrx/j;

    .line 1056
    iget-object v0, p0, Lrx/e/a$1;->a:[Lrx/j;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 53
    return-void
.end method
