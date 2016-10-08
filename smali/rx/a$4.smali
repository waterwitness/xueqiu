.class public final Lrx/a$4;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/e",
        "<",
        "Lrx/i/l",
        "<-TT;+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lrx/a;


# direct methods
.method public constructor <init>(Lrx/a;)V
    .locals 1

    .prologue
    .line 5915
    iput-object p1, p0, Lrx/a$4;->b:Lrx/a;

    const/4 v0, 0x1

    iput v0, p0, Lrx/a$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5915
    .line 6919
    iget v0, p0, Lrx/a$4;->a:I

    invoke-static {v0}, Lrx/i/d;->c(I)Lrx/i/d;

    move-result-object v0

    .line 5915
    return-object v0
.end method
