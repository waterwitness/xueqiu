.class public final Lrx/h/m;
.super Lrx/g;
.source "ImmediateScheduler.java"


# static fields
.field private static final a:Lrx/h/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lrx/h/m;

    invoke-direct {v0}, Lrx/h/m;-><init>()V

    sput-object v0, Lrx/h/m;->a:Lrx/h/m;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lrx/g;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Lrx/h;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lrx/h/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrx/h/n;-><init>(Lrx/h/m;B)V

    return-object v0
.end method
