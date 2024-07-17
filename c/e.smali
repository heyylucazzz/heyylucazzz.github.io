.class public final Lc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lc/e;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lc/e;->a:Lc/e;

    .line 8
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "kotlin.Unit"

    .line 3
    return-object v0
.end method
