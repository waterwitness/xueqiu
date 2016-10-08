.class public final Lrx/d/a/y;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c",
        "<TR;TT;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private final a:Lrx/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/e",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final b:Lrx/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/g",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/d/a/y;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lrx/c/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/c/g",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lrx/d/a/y$1;

    invoke-direct {v0, p1}, Lrx/d/a/y$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lrx/d/a/y;-><init>(Lrx/c/e;Lrx/c/g;)V

    .line 68
    return-void
.end method

.method private constructor <init>(Lrx/c/e;Lrx/c/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/e",
            "<TR;>;",
            "Lrx/c/g",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lrx/d/a/y;->a:Lrx/c/e;

    .line 72
    iput-object p2, p0, Lrx/d/a/y;->b:Lrx/c/g;

    .line 73
    return-void
.end method

.method public constructor <init>(Lrx/c/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/g",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    sget-object v0, Lrx/d/a/y;->c:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lrx/d/a/y;-><init>(Ljava/lang/Object;Lrx/c/g;)V

    .line 86
    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lrx/d/a/y;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lrx/d/a/y;)Lrx/c/e;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lrx/d/a/y;->a:Lrx/c/e;

    return-object v0
.end method

.method static synthetic b(Lrx/d/a/y;)Lrx/c/g;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lrx/d/a/y;->b:Lrx/c/g;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lrx/i;

    .line 1090
    new-instance v0, Lrx/d/a/y$2;

    invoke-direct {v0, p0, p1, p1}, Lrx/d/a/y$2;-><init>(Lrx/d/a/y;Lrx/i;Lrx/i;)V

    .line 41
    return-object v0
.end method
