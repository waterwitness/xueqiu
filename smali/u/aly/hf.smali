.class public final Lu/aly/hf;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "a_start_time"

    iput-object v0, p0, Lu/aly/hf;->a:Ljava/lang/String;

    .line 29
    const-string v0, "a_end_time"

    iput-object v0, p0, Lu/aly/hf;->b:Ljava/lang/String;

    .line 23
    return-void
.end method
