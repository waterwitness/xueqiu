.class public Lcom/tencent/record/debug/Trace;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/record/debug/TraceLevel;


# static fields
.field private static volatile a:Lcom/tencent/record/debug/Tracer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/tencent/record/debug/LogcatTracer;

    invoke-direct {v0}, Lcom/tencent/record/debug/LogcatTracer;-><init>()V

    sput-object v0, Lcom/tencent/record/debug/Trace;->a:Lcom/tencent/record/debug/Tracer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
