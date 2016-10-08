.class public final Lrx/i/n;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final c:[Lrx/i/o;

.field static final d:Lrx/i/n;

.field static final e:Lrx/i/n;


# instance fields
.field final a:Z

.field final b:[Lrx/i/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    new-array v0, v3, [Lrx/i/o;

    sput-object v0, Lrx/i/n;->c:[Lrx/i/o;

    .line 153
    new-instance v0, Lrx/i/n;

    const/4 v1, 0x1

    sget-object v2, Lrx/i/n;->c:[Lrx/i/o;

    invoke-direct {v0, v1, v2}, Lrx/i/n;-><init>(Z[Lrx/i/o;)V

    sput-object v0, Lrx/i/n;->d:Lrx/i/n;

    .line 154
    new-instance v0, Lrx/i/n;

    sget-object v1, Lrx/i/n;->c:[Lrx/i/o;

    invoke-direct {v0, v3, v1}, Lrx/i/n;-><init>(Z[Lrx/i/o;)V

    sput-object v0, Lrx/i/n;->e:Lrx/i/n;

    return-void
.end method

.method public constructor <init>(Z[Lrx/i/o;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-boolean p1, p0, Lrx/i/n;->a:Z

    .line 158
    iput-object p2, p0, Lrx/i/n;->b:[Lrx/i/o;

    .line 159
    return-void
.end method
