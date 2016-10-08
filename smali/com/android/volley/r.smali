.class public final Lcom/android/volley/r;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/android/volley/c;

.field public final c:Lcom/android/volley/y;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/r;->d:Z

    .line 81
    iput-object v1, p0, Lcom/android/volley/r;->a:Ljava/lang/Object;

    .line 82
    iput-object v1, p0, Lcom/android/volley/r;->b:Lcom/android/volley/c;

    .line 83
    iput-object p1, p0, Lcom/android/volley/r;->c:Lcom/android/volley/y;

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/android/volley/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/volley/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/r;->d:Z

    .line 75
    iput-object p1, p0, Lcom/android/volley/r;->a:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lcom/android/volley/r;->b:Lcom/android/volley/c;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/r;->c:Lcom/android/volley/y;

    .line 78
    return-void
.end method

.method public static a(Lcom/android/volley/y;)Lcom/android/volley/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/y;",
            ")",
            "Lcom/android/volley/r",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/android/volley/r;

    invoke-direct {v0, p0}, Lcom/android/volley/r;-><init>(Lcom/android/volley/y;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/android/volley/c;)Lcom/android/volley/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/volley/c;",
            ")",
            "Lcom/android/volley/r",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/android/volley/r;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/r;-><init>(Ljava/lang/Object;Lcom/android/volley/c;)V

    return-object v0
.end method
