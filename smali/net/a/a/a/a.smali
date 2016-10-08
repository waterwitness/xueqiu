.class public final Lnet/a/a/a/a;
.super Ljava/lang/Object;
.source "HanyuPinyinCaseType.java"


# static fields
.field public static final a:Lnet/a/a/a/a;

.field public static final b:Lnet/a/a/a/a;


# instance fields
.field protected c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lnet/a/a/a/a;

    const-string v1, "UPPERCASE"

    invoke-direct {v0, v1}, Lnet/a/a/a/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/a/a/a/a;->a:Lnet/a/a/a/a;

    .line 56
    new-instance v0, Lnet/a/a/a/a;

    const-string v1, "LOWERCASE"

    invoke-direct {v0, v1}, Lnet/a/a/a/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/a/a/a/a;->b:Lnet/a/a/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    iput-object p1, p0, Lnet/a/a/a/a;->c:Ljava/lang/String;

    .line 78
    return-void
.end method
