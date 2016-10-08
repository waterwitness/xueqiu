.class public final Lrx/d/a/ak;
.super Ljava/lang/Object;
.source "OperatorToObservableSortedList.java"

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
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# static fields
.field private static b:Lrx/c/g;


# instance fields
.field private final a:Lrx/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/g",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lrx/d/a/al;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/d/a/al;-><init>(B)V

    sput-object v0, Lrx/d/a/ak;->b:Lrx/c/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lrx/d/a/ak;->b:Lrx/c/g;

    iput-object v0, p0, Lrx/d/a/ak;->a:Lrx/c/g;

    .line 43
    return-void
.end method

.method public constructor <init>(Lrx/c/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/g",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lrx/d/a/ak;->a:Lrx/c/g;

    .line 47
    return-void
.end method

.method static synthetic a(Lrx/d/a/ak;)Lrx/c/g;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lrx/d/a/ak;->a:Lrx/c/g;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lrx/i;

    .line 1051
    new-instance v0, Lrx/d/a/ak$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/d/a/ak$1;-><init>(Lrx/d/a/ak;Lrx/i;Lrx/i;)V

    .line 37
    return-object v0
.end method
